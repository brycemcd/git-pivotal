require 'commands/base'

module Commands
  class Deliver < Base
  
    def run!
      super
      
      unless story_id
        put "Branch name must contain a Pivotal Tracker story id"
        return 1
      end

      put "Marking Story #{story_id} as finished..."
      if story.update_attributes(:current_state => :delivered )
        current_branch # sets the current branch method to the branch the user is on when we invoke this script [later on, if the method is invoked, then integration_branch == current_branch]

        put "Rebasing #{current_branch} onto HEAD of #{integration_branch}"
        sys "git checkout #{integration_branch}"
        sys "git pull origin #{integration_branch}" #FIXME assumes origin is where we need to pull from
        sys "git checkout #{current_branch}"
        sys "git rebase #{integration_branch}"
        
        put "Merging #{current_branch} into #{integration_branch}"
        sys "git checkout #{integration_branch}"
        sys "git merge --no-ff #{current_branch}"
        sys "git push origin #{integration_branch}"

        put "Removing #{current_branch} branch"
        sys "git branch -d #{current_branch}"

        return 0
      else
        put "Unable to mark Story #{story_id} as finished"
        
        return 1
      end
    end

  protected

    # FIXME: clunky way to get branch name... need better method
    def current_branch
      @current_branch ||= get('git status | head -1').gsub(/^.+On branch /, '').chomp
    end

    def story_id
      current_branch[/\d+/]
    end

    def story
      @story ||= project.stories.find(:id => story_id)
    end
  end
end
