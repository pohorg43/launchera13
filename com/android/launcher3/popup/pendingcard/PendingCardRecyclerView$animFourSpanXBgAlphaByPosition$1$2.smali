.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->animFourSpanXBgAlphaByPosition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $isReverse:Z

.field public final synthetic this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;->$isReverse:Z

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;->$isReverse:Z

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$animFourSpanXBgAlphaByPosition$1$2;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setMIsFourSpanXBgAnimIn$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V

    :cond_a
    return-void
.end method
