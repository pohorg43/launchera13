.class public final synthetic Lcom/android/systemui/animation/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    iput p3, p0, Lcom/android/systemui/animation/h;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/h;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/animation/h;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/systemui/animation/h;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/systemui/animation/h;->b:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/animation/h;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/systemui/animation/h;->b:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/animation/h;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
