.class Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;
.super Landroid/animation/ValueAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandAnimator"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;JLandroid/animation/TimeInterpolator;)V
    .registers 6

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public a(ZZILandroid/view/View;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;II)V
    .registers 18

    move-object v7, p0

    move/from16 v0, p6

    move/from16 v1, p7

    const-string v2, "setParam: "

    const-string v3, ", isLastChild:"

    const-string v4, " ,flatPos:"

    move v5, p1

    move v6, p2

    invoke-static {v2, p1, v3, p2, v4}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,start:"

    const-string v4, " ,end:"

    move v8, p3

    invoke-static {v2, p3, v3, v0, v4}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, "ExpandRecyclerConnector"

    invoke-static {v2, v1, v3}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;->b:Z

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v2

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    new-instance v9, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;ZIZLandroid/view/View;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;)V

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
