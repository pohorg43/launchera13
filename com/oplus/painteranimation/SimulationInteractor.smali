.class public Lcom/oplus/painteranimation/SimulationInteractor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANIMATION_PAINTER_CLASS_NAME:Ljava/lang/String; = "com.oplus.painteranimationpanel.api.AnimPainterInstance"

.field private static final METHOD_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final METHOD_PAINTING_ANIM:Ljava/lang/String; = "paintAnimation"

.field private static final METHOD_PAINTING_ANIM_SET:Ljava/lang/String; = "paintAnimatorSet"

.field private static final METHOD_PAINTING_LIST_VIEW:Ljava/lang/String; = "paintListView"

.field private static final METHOD_PAINTING_RECYCLE_VIEW:Ljava/lang/String; = "paintRecyclerView"

.field private static final TAG:Ljava/lang/String; = "SimulationInteractor"

.field private static sAnimationPainterInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryGetAnimationPainterInstance()V
    .registers 4

    const-string v0, "SimulationInteractor"

    :try_start_2
    const-string v1, "com.oplus.painteranimationpanel.api.AnimPainterInstance"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAnimationPainterInstance successful!!! sAnimationPainterInstance = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    const-string v1, "GetAnimationPainterInstance error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryGetAnimationPainterInstance error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static tryGetAnimationPainterInstance(Landroid/content/Context;)V
    .registers 8

    const-string v0, "SimulationInteractor"

    :try_start_2
    const-string v1, "com.oplus.painteranimationpanel.api.AnimPainterInstance"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    if-eqz p0, :cond_36

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "GetSimulationInstance successful!!! sAnimationPainterInstance = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const-string p0, "GetSimulationInstance error!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tryGetAnimationPainterInstance error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static tryPaintAnimation(Ljava/lang/String;Ljava/lang/String;Landroid/animation/AnimatorSet;)Z
    .registers 12

    const-class v0, Ljava/lang/String;

    const-string v1, "SimulationInteractor"

    invoke-static {}, Lcom/oplus/painteranimation/SimulationInteractor;->tryGetAnimationPainterInstance()V

    sget-object v2, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "paintAnimatorSet"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const-class v0, Landroid/animation/AnimatorSet;

    const/4 v8, 0x2

    aput-object v0, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v2, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tryPaintAnimation successful!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_38
    const-string p0, "tryPaintAnimation error!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3e

    goto :goto_49

    :catch_3e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "tryPaintAnimation error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_49
    :goto_49
    return v3
.end method

.method public static tryPaintAnimation(Ljava/lang/String;Ljava/lang/String;Landroid/animation/ValueAnimator;)Z
    .registers 12

    const-class v0, Ljava/lang/String;

    const-string v1, "SimulationInteractor"

    invoke-static {}, Lcom/oplus/painteranimation/SimulationInteractor;->tryGetAnimationPainterInstance()V

    sget-object v2, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "paintAnimation"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const-class v0, Landroid/animation/ValueAnimator;

    const/4 v8, 0x2

    aput-object v0, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v2, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tryPaintAnimation successful!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_38
    const-string p0, "tryPaintAnimation error!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3e

    goto :goto_49

    :catch_3e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "tryPaintAnimation error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_49
    :goto_49
    return v3
.end method

.method public static tryPaintAnimation(Ljava/lang/String;Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringAnimation;)Z
    .registers 12

    const-class v0, Ljava/lang/String;

    const-string v1, "SimulationInteractor"

    invoke-static {}, Lcom/oplus/painteranimation/SimulationInteractor;->tryGetAnimationPainterInstance()V

    sget-object v2, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "paintAnimation"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const-class v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v8, 0x2

    aput-object v0, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_38

    sget-object v2, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tryPaintAnimation successful!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_38
    const-string p0, "tryPaintAnimation error!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3e

    goto :goto_49

    :catch_3e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "tryPaintAnimation error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_49
    :goto_49
    return v3
.end method

.method public static tryPaintListView(Ljava/lang/String;Landroid/widget/ListView;)Z
    .registers 10

    const-string v0, "SimulationInteractor"

    invoke-static {}, Lcom/oplus/painteranimation/SimulationInteractor;->tryGetAnimationPainterInstance()V

    sget-object v1, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "paintListView"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Landroid/widget/ListView;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_33

    sget-object v3, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tryPaintListView successful!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_33
    const-string p0, "tryPaintListView error!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_44

    :catch_39
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "tryPaintListView error:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return v2
.end method

.method public static tryPaintRecyclerView(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)Z
    .registers 10

    const-string v0, "SimulationInteractor"

    invoke-static {}, Lcom/oplus/painteranimation/SimulationInteractor;->tryGetAnimationPainterInstance()V

    sget-object v1, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "paintRecyclerView"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_33

    sget-object v3, Lcom/oplus/painteranimation/SimulationInteractor;->sAnimationPainterInstance:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "tryPaintRecyclerView successful!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_33
    const-string p0, "tryPaintRecyclerView error!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_44

    :catch_39
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "tryPaintRecyclerView error:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return v2
.end method
