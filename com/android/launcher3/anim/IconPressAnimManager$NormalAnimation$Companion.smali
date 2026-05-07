.class public final Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINTERPOLATOR(Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;)Landroid/view/animation/Interpolator;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;->getINTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method private final getINTERPOLATOR()Landroid/view/animation/Interpolator;
    .registers 5

    :try_start_0
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd  # 0.4f

    const/4 v1, 0x0

    const v2, 0x3e4ccccd  # 0.2f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_14
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_27

    :cond_1b
    const-string p0, "IconPressAnimManager"

    const-string v0, "PathInterpolator is error"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_27
    check-cast p0, Landroid/view/animation/Interpolator;

    return-object p0
.end method


# virtual methods
.method public final getSCALE_SCOPE()[F
    .registers 1

    invoke-static {}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;->access$getSCALE_SCOPE$cp()[F

    move-result-object p0

    return-object p0
.end method
