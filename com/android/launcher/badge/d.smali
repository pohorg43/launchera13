.class public final synthetic Lcom/android/launcher/badge/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher/badge/d;

.field public static final synthetic c:Lcom/android/launcher/badge/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/badge/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/badge/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher/badge/d;->b:Lcom/android/launcher/badge/d;

    new-instance v0, Lcom/android/launcher/badge/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/badge/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher/badge/d;->c:Lcom/android/launcher/badge/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/badge/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget p0, p0, Lcom/android/launcher/badge/d;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p2, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->a(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void

    :goto_e
    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    check-cast p2, Landroid/animation/Animator;

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
