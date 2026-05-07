.class public final synthetic Lcom/android/launcher3/popup/pendingcard/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;I)V
    .registers 5

    iput p4, p0, Lcom/android/launcher3/popup/pendingcard/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/a;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    iput-boolean p2, p0, Lcom/android/launcher3/popup/pendingcard/a;->c:Z

    iput-object p3, p0, Lcom/android/launcher3/popup/pendingcard/a;->d:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/a;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/a;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/a;->c:Z

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/a;->d:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->a(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/a;->b:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/a;->c:Z

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/a;->d:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->b(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;ZLcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
