<!--
 * @Author       : Dense Chen
 * @Date         : 2020-01-01 00:49:05
 * @LastEditTime : 2020-03-02 19:14:02
 * @LastEditors  : Dense Chen
 * @Description  : Dense Chen @ NUDT
 * @FilePath     : /densechen.github.io/README.md
 * @densechen@forxmail.com/littlelampchen@gmail.com
 -->
 <center>
     <h1>陈登盛</h1>
     <div>
         <span>
             <img src="assets/envelope-solid.svg" width="18px">
             densechen@foxmail.com
         </span>
         ·
         <span>
             <img src="assets/github-brands.svg" width="18px">
             https://github.com/densechen
         </span>
     </div>
 </center>

## <img src="assets/info-circle-solid.svg" width="30px"> 最近情况

- 就读于**国防科技大学**计算机科学与技术专业。感兴趣方向：深度学习、计算机视觉、三维视觉、强化学习、脉冲神经网络，生物计算。

## <img src="assets/graduation-cap-solid.svg" width="30px"> 教育经历

- 硕士，国防科技大学，计算机科学与技术，2019~2022
- 本科，福州大学，计算机科学与技术，2015~2019

## <img src="assets/briefcase-solid.svg" width="30px"> 实习经历

- **科沃斯人工智能研究院（南京），计算机视觉实习生，2019**

- **腾讯人工智能实验室，计算机视觉实习生，2018**

## <img src="assets/project-diagram-solid.svg" width="30px"> 论文成果

- *Chen, Dengsheng*, and Kai Xu. ["AReLU: Attention-based Rectified Linear Unit."](https://arxiv.org/pdf/2006.13858) arXiv preprint arXiv:2006.13858 (2020). [代码](https://github.com/densechen/AReLU)
  - Element-wise activation functions play a critical role in deep neural networks via affecting the expressivity power and the learning dynamics. Learning-based activation functions have recently gained increasing attention and success. We propose a new perspective of learnable activation function through formulating them with element-wise attention mechanism. In each network layer, we devise an attention module which learns an element-wise, sign-based attention map for the pre-activation feature map. The attention map scales an element based on its sign. Adding the attention module with a rectified linear unit (ReLU) results in an amplification of positive elements and a suppression of negative ones, both with learned, data-adaptive parameters. We coin the resulting activation function Attention-based Rectified Linear Unit (AReLU). The attention module essentially learns an element-wise residue of the activated part of the input, as ReLU can be viewed as an identity transformation. This makes the network training more resis- tant to gradient vanishing. The learned attentive activation leads to well-focused activation of relevant regions of a feature map. Through extensive evaluations, we show that AReLU significantly boosts the performance of most mainstream network architectures with only two extra learnable parameters per layer introduced. Notably, AReLU facilitates fast network training under small learning rates, which makes it especially suited in the case of transfer learning and meta learning.

- *Chen, Dengsheng*, et al. ["Learning canonical shape space for category-level 6d object pose and size estimation."](https://openaccess.thecvf.com/content_CVPR_2020/papers/Chen_Learning_Canonical_Shape_Space_for_Category-Level_6D_Object_Pose_and_CVPR_2020_paper.pdf) Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition. 2020. [代码](https://github.com/densechen/CASS)
  - We present a novel approach to category-level 6D object pose and size estimation. To tackle intra-class shape variations, we learn canonical shape space (CASS), a unified representation for a large variety of instances of a certain object category. In particular, CASS is modeled as the latent space of a deep generative model of canonical 3D shapes with normalized pose. We train a variational auto-encoder (VAE) for generating 3D point clouds in the canonical space from an RGBD image. The VAE is trained in a cross-category fashion, exploiting the publicly available large 3D shape repositories. Since the 3D point cloud is generated in normalized pose (with actual size), the encoder of the VAE learns view-factorized RGBD embedding. It maps an RGBD image in arbitrary view into a pose-independent 3D shape representation. Object pose is then estimated via contrasting it with a pose-dependent feature of the input RGBD extracted with a separate deep neural networks. We integrate the learning of CASS and pose and size estimation into an end-to-end trainable network, achieving the state-of-the-art performance.

- *Chen, Dengsheng*, Yuanlong Yu, and Zhiyong Huang. ["Online memory learning for active object recognition."](https://ieeexplore.ieee.org/document/8961612) 2019 IEEE International Conference on Robotics and Biomimetics (ROBIO). IEEE, 2019.
  
- Liu, Wenxi, Song, Yibing, *Chen, Dengsheng,* et al. ["Deformable object tracking with gated fusion."](https://arxiv.org/pdf/1809.10417) IEEE Transactions on Image Processing 28.8 (2019): 3766-3777.

- *Chen, Dengsheng*, et al. ["Enhancement Mask for Hippocampus Detection and Segmentation."](https://arxiv.org/pdf/1902.04244) 2018 IEEE International Conference on Information and Automation (ICIA). IEEE, 2018.

## <img src="assets/tools-solid.svg" width="30px"> 其他项目

- [DIP: Differentiable Renderer for Iterative 6D Pose Estimation](https://github.com/densechen/DirIP)
  - 该项目使用可微分渲染的方式，进行了物体位姿的优化，取得了一定的效果。
