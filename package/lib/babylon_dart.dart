@JS('BABYLON')
library babylon_dart;

import 'dart:html';
import 'dart:typed_data';
import 'dart:web_audio';
import 'dart:web_gl';
import 'package:js/js.dart';

part 'src/abstract_action_manager.dart';
part 'src/abstract_mesh.dart';
part 'src/abstract_scene.dart';
part 'src/address_mode.dart';
part 'src/animatable.dart';
part 'src/animated_input_block_types.dart';
part 'src/animation_key_interpolation.dart';
part 'src/asset_container.dart';
part 'src/asset_task_state.dart';
part 'src/auto_layout_mode.dart';
part 'src/babylon_file_parser.dart';
part 'src/blend_factor.dart';
part 'src/blend_operation.dart';
part 'src/bounding_box.dart';
part 'src/bounding_info.dart';
part 'src/bounding_sphere.dart';
part 'src/buffer_binding_type.dart';
part 'src/buffer_usage.dart';
part 'src/camera.dart';
part 'src/camera_stage_action.dart';
part 'src/camera_stage_frame_buffer_action.dart';
part 'src/canvas_compositing_alpha_mode.dart';
part 'src/color3.dart';
part 'src/color4.dart';
part 'src/color_write_flags.dart';
part 'src/compare_function.dart';
part 'src/compilation_message_type.dart';
part 'src/compute_binding_type.dart';
part 'src/compute_pass_timestamp_location.dart';
part 'src/conditional_block_conditions.dart';
part 'src/coordinate.dart';
part 'src/coroutine_scheduler.dart';
part 'src/cull_mode.dart';
part 'src/debug_layer_tab.dart';
part 'src/depth_of_field_effect_blur_level.dart';
part 'src/device_input_event_type.dart';
part 'src/device_lost_reason.dart';
part 'src/device_type.dart';
part 'src/dual_sense_input.dart';
part 'src/dual_shock_button.dart';
part 'src/dual_shock_dpad.dart';
part 'src/dual_shock_input.dart';
part 'src/error_filter.dart';
part 'src/evaluate_sub_mesh_stage_action.dart';
part 'src/feature_name.dart';
part 'src/filter_mode.dart';
part 'src/front_face.dart';
part 'src/hand_constraint_orientation.dart';
part 'src/hand_constraint_visibility.dart';
part 'src/hand_constraint_zone.dart';
part 'src/hand_part.dart';
part 'src/i_action.dart';
part 'src/i_action_event.dart';
part 'src/i_cullable.dart';
part 'src/i_disposable.dart';
part 'src/i_edges_renderer_options.dart';
part 'src/i_get_set_vertices_data.dart';
part 'src/i_particle_system.dart';
part 'src/index_format.dart';
part 'src/individual_babylon_file_parser.dart';
part 'src/input_step_mode.dart';
part 'src/inspectable_type.dart';
part 'src/internal_texture_source.dart';
part 'src/joystick_axis.dart';
part 'src/light.dart';
part 'src/load_op.dart';
part 'src/map_mode.dart';
part 'src/material.dart';
part 'src/material_plugin_event.dart';
part 'src/matrix.dart';
part 'src/mesh_stage_action.dart';
part 'src/motion_controller_constructor.dart';
part 'src/native_pointer_input.dart';
part 'src/node.dart';
part 'src/node_constructor.dart';
part 'src/node_material_block_connection_point_mode.dart';
part 'src/node_material_block_connection_point_types.dart';
part 'src/node_material_block_targets.dart';
part 'src/node_material_connection_point_compatibility_states.dart';
part 'src/node_material_connection_point_direction.dart';
part 'src/node_material_modes.dart';
part 'src/node_material_system_values.dart';
part 'src/observable.dart';
part 'src/orientation.dart';
part 'src/perf_strategy_initialization.dart';
part 'src/physics_radial_impulse_falloff.dart';
part 'src/physics_updraft_mode.dart';
part 'src/picking_info.dart';
part 'src/plane.dart';
part 'src/plugin_material_factory.dart';
part 'src/point_color.dart';
part 'src/pointer_input.dart';
part 'src/pointer_move_stage_action.dart';
part 'src/pointer_up_down_stage_action.dart';
part 'src/pose_enabled_controller_type.dart';
part 'src/power_preference.dart';
part 'src/pre_active_mesh_stage_action.dart';
part 'src/predefined_color_space.dart';
part 'src/primitive_topology.dart';
part 'src/property_type_for_edition.dart';
part 'src/quaternion.dart';
part 'src/query_type.dart';
part 'src/ray.dart';
part 'src/render_pass_timestamp_location.dart';
part 'src/render_target_stage_action.dart';
part 'src/render_targets_stage_action.dart';
part 'src/rendering_group_stage_action.dart';
part 'src/rendering_mesh_stage_action.dart';
part 'src/runtime_animation.dart';
part 'src/sampler_binding_type.dart';
part 'src/scene.dart';
part 'src/scene_loader_animation_group_loading_mode.dart';
part 'src/scene_loader_success_callback.dart';
part 'src/shader_custom_processing_function.dart';
part 'src/shader_language.dart';
part 'src/shader_stage.dart';
part 'src/simple_stage_action.dart';
part 'src/simplification_type.dart';
part 'src/skeleton.dart';
part 'src/space.dart';
part 'src/stencil_operation.dart';
part 'src/storage_texture_access.dart';
part 'src/store_op.dart';
part 'src/sub_emitter_type.dart';
part 'src/sub_mesh.dart';
part 'src/switch_input.dart';
part 'src/texture_aspect.dart';
part 'src/texture_dimension.dart';
part 'src/texture_format.dart';
part 'src/texture_sample_type.dart';
part 'src/texture_usage.dart';
part 'src/texture_view_dimension.dart';
part 'src/timer_state.dart';
part 'src/tonemapping_operator.dart';
part 'src/transform_node.dart';
part 'src/triangle_picking_predicate.dart';
part 'src/trigonometry_block_operations.dart';
part 'src/uniform_buffer.dart';
part 'src/vector3.dart';
part 'src/vertex_format.dart';
part 'src/viewport.dart';
part 'src/wave_block_kind.dart';
part 'src/web_xr_feature_constructor.dart';
part 'src/web_xr_near_controller_mode.dart';
part 'src/web_xr_state.dart';
part 'src/web_xr_tracking_state.dart';
part 'src/xbox360_button.dart';
part 'src/xbox360_dpad.dart';
part 'src/xbox_input.dart';
part 'src/xr_event_handler.dart';
part 'src/xr_frame_request_callback.dart';
part 'src/xr_hand_joint.dart';
part 'src/xr_hit_test_trackable_type.dart';

@JS()
class Promise<T> {
  external Promise then(void Function(T) onFulfilled, [void Function(dynamic) onRejected]);
}
