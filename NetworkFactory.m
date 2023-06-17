classdef NetworkFactory
    % A factory to initialise the network to be used within an ARTwarp run.
    %   Detailed explanation goes here
    
    methods (Static)
        function net = new_network(contours)
            if nargin < 1 % If not passed, assume empty array
                contours = Contour.empty(0, 0);
            end
            % Creates an empty network to be trained
            weight = ones(max([contours.length]), 0);
            net = Network(weight);
        end

        function net = load_network(save_path)
            % Load and return a previously saved network
            %   TODO: no idea how we would store networks
            net = NetworkFactory.new_network(); % For now we return an empty net
        end
        
    end
end
