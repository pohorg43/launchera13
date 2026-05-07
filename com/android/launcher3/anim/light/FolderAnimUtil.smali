.class public final Lcom/android/launcher3/anim/light/FolderAnimUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DURATION_200:J = 0xc8L

.field private static final DURATION_FOLDER_CLOSE:J = 0x168L

.field private static final DURATION_FOLDER_OPEN:J = 0x195L

.field public static final INSTANCE:Lcom/android/launcher3/anim/light/FolderAnimUtil;

.field private static final INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_FOLDER_OPEN:Landroid/view/animation/PathInterpolator;

.field private static final MIN_LAUNCHER_CONTENT_SCALE_LIGHT_ANIM:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "FolderAnimUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;

    invoke-direct {v0}, Lcom/android/launcher3/anim/light/FolderAnimUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INSTANCE:Lcom/android/launcher3/anim/light/FolderAnimUtil;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd  # 0.1f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_OPEN:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCloseFolderDisbandAnimation(Lcom/android/launcher3/folder/Folder;)Landroid/animation/ValueAnimator;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v1, "ofPropertyValuesHolder(folder, alpha)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/anim/light/FolderAnimUtil$getCloseFolderDisbandAnimation$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getCloseFolderDisbandAnimation$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static final getLauncherContentAnim(Lcom/android/launcher/Launcher;Z)Landroid/animation/AnimatorSet;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightLauncherContentAnim(Lcom/android/launcher/Launcher;Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    goto :goto_20

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getLauncherContentAnimWithGaussian(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDragLayer;Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    const-string/jumbo p1, "{\n            WallpaperU…r, folderClose)\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_20
    return-object p0
.end method

.method public static final getLightFolderContentAnimation(ZLcom/android/launcher3/folder/Folder;)Landroid/animation/Animator;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p0, :cond_f

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const/4 v2, 0x2

    if-eqz p0, :cond_19

    new-array v3, v2, [F

    fill-array-data v3, :array_98

    goto :goto_1e

    :cond_19
    new-array v3, v2, [F

    fill-array-data v3, :array_a0

    :goto_1e
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v1, v6, v7

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v6, v2, [F

    aget v8, v3, v7

    aput v8, v6, v7

    aget v3, v3, v5

    aput v3, v6, v5

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    if-eqz p0, :cond_5a

    new-array p0, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, p0, v7

    aput-object v1, p0, v5

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string/jumbo v1, "ofPropertyValuesHolder(folder, scale, alpha)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x195

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_OPEN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_8e

    :cond_5a
    new-array p0, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, p0, v7

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string/jumbo v3, "ofPropertyValuesHolder(folder, scale)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x168

    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v7

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string/jumbo v3, "ofPropertyValuesHolder(folder, alpha)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p0, v2, v7

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object p0, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_8e
    new-instance p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightFolderContentAnimation$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_98
    .array-data 4
        0x3f666666  # 0.9f
        0x3f800000  # 1.0f
    .end array-data

    :array_a0
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data
.end method

.method private static final getLightLauncherContentAnim(Lcom/android/launcher/Launcher;Z)Landroid/animation/AnimatorSet;
    .registers 22
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v1, :cond_20

    const-wide/16 v6, 0x168

    goto :goto_22

    :cond_20
    const-wide/16 v6, 0x195

    :goto_22
    if-eqz v1, :cond_27

    sget-object v8, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_CLOSE:Landroid/view/animation/PathInterpolator;

    goto :goto_29

    :cond_27
    sget-object v8, Lcom/android/launcher3/anim/light/FolderAnimUtil;->INTERPOLATOR_FOLDER_OPEN:Landroid/view/animation/PathInterpolator;

    :goto_29
    invoke-static/range {p0 .. p1}, Lcom/android/common/config/AnimationConstant;->workspaceScaleRangeForFolderAnim(Lcom/android/launcher3/Launcher;Z)[F

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/anim/ScaleTarget;

    const/4 v11, 0x3

    new-array v12, v11, [Landroid/view/View;

    const-string v13, "hotseat"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const-string/jumbo v14, "workspace"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v4, v12, v14

    const-string/jumbo v15, "pageIndicator"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x2

    aput-object v5, v12, v15

    invoke-direct {v10, v12}, Lcom/android/launcher3/anim/ScaleTarget;-><init>([Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v12

    const-string v11, "launcher.deviceProfile"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4, v12}, Lcom/android/launcher3/anim/light/FolderAnimUtil;->setPivot(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusDeviceProfile;)V

    sget-object v11, Lcom/android/launcher3/anim/ScaleTarget;->Companion:Lcom/android/launcher3/anim/ScaleTarget$Companion;

    invoke-virtual {v11}, Lcom/android/launcher3/anim/ScaleTarget$Companion;->getSCALE_TARGET()Landroid/util/FloatProperty;

    move-result-object v11

    new-array v12, v15, [F

    aget v16, v9, v13

    aput v16, v12, v13

    aget v16, v9, v14

    aput v16, v12, v14

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v1, :cond_7a

    const/high16 v11, 0x3f800000  # 1.0f

    goto :goto_7b

    :cond_7a
    const/4 v11, 0x0

    :goto_7b
    sget-object v12, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v12

    if-nez v12, :cond_8e

    sget-object v12, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v12

    if-eqz v12, :cond_8c

    goto :goto_8e

    :cond_8c
    move v12, v13

    goto :goto_8f

    :cond_8e
    :goto_8e
    move v12, v14

    :goto_8f
    new-instance v15, Lcom/android/launcher3/anim/AlphaTarget;

    const/4 v14, 0x3

    new-array v14, v14, [Landroid/view/View;

    aput-object v3, v14, v13

    const/4 v13, 0x1

    aput-object v4, v14, v13

    const/16 v17, 0x2

    aput-object v5, v14, v17

    invoke-direct {v15, v14}, Lcom/android/launcher3/anim/AlphaTarget;-><init>([Landroid/view/View;)V

    sget-object v14, Lcom/android/launcher3/anim/AlphaTarget;->Companion:Lcom/android/launcher3/anim/AlphaTarget$Companion;

    invoke-virtual {v14}, Lcom/android/launcher3/anim/AlphaTarget$Companion;->getALPHA()Landroid/util/FloatProperty;

    move-result-object v14

    move-wide/from16 v18, v6

    new-array v6, v13, [F

    const/4 v7, 0x0

    aput v11, v6, v7

    invoke-static {v15, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v1, :cond_b6

    move-wide/from16 v13, v18

    goto :goto_b8

    :cond_b6
    const-wide/16 v13, 0xc8

    :goto_b8
    invoke-virtual {v6, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v7, "alphaAnim"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;

    invoke-direct {v7, v5, v1, v3, v4}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;ZLcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnEnd$1;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnEnd$1;-><init>(ZLcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;

    invoke-direct {v3, v1, v11, v9, v4}, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;-><init>(ZF[FLcom/android/launcher3/OplusWorkspace;)V

    invoke-virtual {v6, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v5, 0x1

    aput-object v6, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez v12, :cond_f4

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_f2

    goto :goto_f4

    :cond_f2
    move v13, v4

    goto :goto_f5

    :cond_f4
    :goto_f4
    move v13, v5

    :goto_f5
    if-nez v13, :cond_116

    if-eqz v1, :cond_fb

    const/4 v3, 0x0

    goto :goto_fd

    :cond_fb
    const/high16 v3, 0x3f800000  # 1.0f

    :goto_fd
    if-eqz v1, :cond_101

    const/4 v11, 0x0

    goto :goto_103

    :cond_101
    const/high16 v11, 0x3f800000  # 1.0f

    :goto_103
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    invoke-virtual {v0, v3, v11}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->createDepthAnim(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-wide/from16 v6, v18

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_116
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-object v2
.end method

.method private static final setPivot(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    :cond_11
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_25

    iget p1, p2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_2d

    :cond_25
    iget p1, p2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    :goto_2d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    goto :goto_48

    :cond_37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget p1, p2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setPivotY(F)V

    :goto_48
    return-void
.end method
