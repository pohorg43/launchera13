.class Lcom/android/launcher3/OplusCellLayout$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusCellLayout;->animateLastChildToAdd(Landroid/view/View;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mLastWorkspaceScrollX:I

.field public final synthetic this$0:Lcom/android/launcher3/OplusCellLayout;

.field public final synthetic val$child:Landroid/widget/ImageView;

.field public final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/Launcher;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$3;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/OplusCellLayout$3;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/OplusCellLayout$3;->val$child:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/OplusCellLayout$3;->mLastWorkspaceScrollX:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$3;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/OplusCellLayout$3;->mLastWorkspaceScrollX:I

    sub-int/2addr v0, p1

    iput p1, p0, Lcom/android/launcher3/OplusCellLayout$3;->mLastWorkspaceScrollX:I

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$3;->val$child:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result p1

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_1c
    return-void
.end method
