.class public final Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLASS_REMOTE_ANIMATION_TARGET_EXT:Ljava/lang/String; = "android.view.RemoteAnimationTargetExtImpl"

.field private static final GET_OPLUS_LAUNCH_VIEW_INFO:Ljava/lang/String; = "getOplusLaunchViewInfo"

.field public static final INSTANCE:Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;

.field private static final REMOTE_ANIMATION_TARGET_EXT:Ljava/lang/String; = "mExt"

.field private static final TAG:Ljava/lang/String; = "RemoteAnimationUtil"

.field private static final VIEW_LAUNCH_PKG:Ljava/lang/String; = "mLaunchPackage"

.field private static final VIEW_LOCATION:Ljava/lang/String; = "mViewLocation"

.field private static final VIEW_SURFACE:Ljava/lang/String; = "mViewSurface"

.field private static extField:Ljava/lang/reflect/Field;

.field private static infoMethod:Ljava/lang/reflect/Method;

.field private static volatile isFirstCheck:Z

.field private static volatile isSupportBackToAssistant:Z

.field private static locationField:Ljava/lang/reflect/Field;

.field private static pkgField:Ljava/lang/reflect/Field;

.field private static surfaceField:Ljava/lang/reflect/Field;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;

    invoke-direct {v0}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;-><init>()V

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->INSTANCE:Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isFirstCheck:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_e
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_15

    goto :goto_25

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getField exception: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteAnimationUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_25
    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static final getIconLeash([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/SurfaceControl;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "targets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :cond_7
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    iget-boolean v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    if-eqz v3, :cond_7

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_11
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_28

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getMethod exception: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteAnimationUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_28
    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static final getTargetRectByTargets([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/RectF;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "targets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :cond_7
    if-ge v1, v0, :cond_33

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v3, :cond_7

    iget-boolean v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    if-eqz v3, :cond_7

    iget-object p0, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLocation:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    iget-object v1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, p0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3

    :cond_33
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public static final initOplusField(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/RemoteAnimationTarget;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCompat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isBackToAssistantSupported()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mExt"

    invoke-static {v0, v1}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    :cond_21
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->extField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_28

    move-object p1, v1

    goto :goto_2c

    :cond_28
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2c
    if-nez p1, :cond_2f

    return-void

    :cond_2f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->infoMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getOplusLaunchViewInfo"

    invoke-static {v0, v2}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->infoMethod:Ljava/lang/reflect/Method;

    :cond_3f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->infoMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_45

    move-object p1, v1

    goto :goto_4c

    :cond_45
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4c
    if-nez p1, :cond_4f

    return-void

    :cond_4f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->surfaceField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_5f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mViewSurface"

    invoke-static {v0, v2}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->surfaceField:Ljava/lang/reflect/Field;

    :cond_5f
    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->surfaceField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_65

    move-object v0, v1

    goto :goto_69

    :cond_65
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_69
    instance-of v2, v0, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_70

    check-cast v0, Landroid/view/SurfaceControl;

    goto :goto_71

    :cond_70
    move-object v0, v1

    :goto_71
    if-eqz v0, :cond_cb

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_7a

    goto :goto_cb

    :cond_7a
    sget-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->locationField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_8a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mViewLocation"

    invoke-static {v2, v3}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->locationField:Ljava/lang/reflect/Field;

    :cond_8a
    sget-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->pkgField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_9a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mLaunchPackage"

    invoke-static {v2, v3}, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->pkgField:Ljava/lang/reflect/Field;

    :cond_9a
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLeash:Landroid/view/SurfaceControl;

    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->locationField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_a2

    move-object v0, v1

    goto :goto_a6

    :cond_a2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a6
    instance-of v2, v0, Landroid/graphics/Point;

    if-eqz v2, :cond_ad

    check-cast v0, Landroid/graphics/Point;

    goto :goto_ae

    :cond_ad
    move-object v0, v1

    :goto_ae
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLocation:Landroid/graphics/Point;

    sget-object v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->pkgField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_b6

    move-object p1, v1

    goto :goto_ba

    :cond_b6
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_ba
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_c1
    iput-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->launchPkg:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->viewLocation:Landroid/graphics/Point;

    if-nez p1, :cond_c8

    return-void

    :cond_c8
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startFromAssistScreen:Z

    :cond_cb
    :goto_cb
    return-void
.end method

.method public static final isBackToAssistantSupported()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isFirstCheck:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isFirstCheck:Z

    :try_start_7
    const-string v1, "android.view.RemoteAnimationTargetExtImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isSupportBackToAssistant:Z

    sget-object v1, Ly2/p;->a:Ly2/p;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_17

    :catchall_12
    move-exception v1

    invoke-static {v1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_17
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_2f

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "load class exception: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAnimationUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isSupportBackToAssistant:Z

    :cond_2f
    :goto_2f
    sget-boolean v0, Lcom/oplus/systemui/shared/system/RemoteAnimationUtil;->isSupportBackToAssistant:Z

    return v0
.end method
