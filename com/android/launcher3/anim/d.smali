.class public final synthetic Lcom/android/launcher3/anim/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/anim/d;

.field public static final synthetic c:Lcom/android/launcher3/anim/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/anim/d;->b:Lcom/android/launcher3/anim/d;

    new-instance v0, Lcom/android/launcher3/anim/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/anim/d;->c:Lcom/android/launcher3/anim/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget p0, p0, Lcom/android/launcher3/anim/d;->a:I

    packed-switch p0, :pswitch_data_e

    :pswitch_5  #0x0
    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    check-cast p2, Landroid/animation/Animator;

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
