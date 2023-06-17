function exitcode = CLI(varargin)
    switch varargin{1}
        case 'train'
            if varargin{2} == "-l" % Load and train saved network
                net = NetworkFactory.load_network(varargin{3});
                training_dir = varargin{4};
            else % Create and train new network
                net = NetworkFactory.new_network();
                training_dir = varargin{2};
            end
            disp(training_dir);

            % train network!

        otherwise
            disp("Invalid subcommand '" + varargin(1) + "'; run 'artwarp help' for a list of valid commands")
    end

    exitcode = 0;
end
