baselines-320
baseline320gettext: spec

	spec for: #'squeakCommon' do: [			
		spec
			project: 'Gettext-Project'
			with: [	spec
						className: 'ConfigurationOfGettext';
						versionString: #stable;
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/Gettext/main' ].
				
		spec
			package: 'Seaside-Gettext-Core' with: [ spec requires: #('Gettext-Project' 'Seaside-Session') ];
			package: 'Seaside-Gettext-Examples' with: [ spec requires: #('Seaside-Gettext-Core') ].
		
		spec
			group: 'Gettext' with: #('Seaside-Gettext-Core');
			group: 'Gettext-Examples' with: #('Gettext' 'Seaside-Gettext-Examples');
			group: 'CI' with: #('Gettext')
	
	].


	spec for: #pharo do:[
		spec
			package: 'Seaside-Pharo-Gettext-Core';
			package: 'Seaside-Gettext-Core' with:[spec includes: 'Seaside-Pharo-Gettext-Core']
	].

	spec for: #(#'pharo1.x' #'pharo2.x' #'pharo3.x') do:[
		spec
			package: 'Seaside-Gettext-Slime' with: [ spec requires: #('Seaside-Gettext-Core' 'Seaside-Slime') ].
			
		spec 
			group: 'Gettext-Slime' with: #('Seaside-Gettext-Slime')
	].

	spec for: #(#'pharo4.x') do:[
		spec
			package: 'Seaside-Gettext-Slime' with: [ spec requires: #('Seaside-Gettext-Core' 'Seaside-Pharo40-Slime') ].
			
		spec 
			group: 'Gettext-Slime' with: #('Seaside-Gettext-Slime')
	]