.class Lcom/android/launcher3/OplusCellLayout$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusCellLayout;

.field public final synthetic val$bigFolder:Z

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

.field public final synthetic val$newHeight:I

.field public final synthetic val$newWidth:I

.field public final synthetic val$newX:I

.field public final synthetic val$newY:I

.field public final synthetic val$oldHeight:I

.field public final synthetic val$oldWidth:I

.field public final synthetic val$oldX:I

.field public final synthetic val$oldY:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Z)V
    .registers 13

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$5;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iput p3, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$oldX:I

    iput p4, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$newX:I

    iput p5, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$oldY:I

    iput p6, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$newY:I

    iput p7, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$oldWidth:I

    iput p8, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$newWidth:I

    iput p9, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$oldHeight:I

    iput p10, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$newHeight:I

    iput-object p11, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$child:Landroid/view/View;

    iput-boolean p12, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$bigFolder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$oldX:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$newX:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v2, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$oldY:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$newY:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v2, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$oldWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$newWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v2, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$oldHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$newHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout$5;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object v2, v1, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v2, :cond_47

    iput-object v0, v1, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    :cond_47
    iget-object v1, v1, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$5;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v0, Lcom/android/launcher3/OplusCellLayout;->mGridWidth:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v0, Lcom/android/launcher3/OplusCellLayout;->mGridHeight:I

    :cond_5b
    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$child:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v1, :cond_66

    check-cast v0, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v0, p1}, Lcom/android/launcher3/card/IAreaWidget;->setLayoutAnimValue(F)V

    :cond_66
    iget-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$bigFolder:Z

    if-eqz p1, :cond_89

    sget-object p1, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$child:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout$5;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/OplusCellLayout$5;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->placeFolderName(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V

    :cond_89
    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$5;->val$child:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
