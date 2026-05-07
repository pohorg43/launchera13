.class Lcom/oplus/compatui/OplusCompatUILayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compatui/OplusCompatUILayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compatui/OplusCompatUILayout;


# direct methods
.method public constructor <init>(Lcom/oplus/compatui/OplusCompatUILayout;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compatui/OplusCompatUILayout$1;->this$0:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/compatui/OplusCompatUILayout$1;->this$0:Lcom/oplus/compatui/OplusCompatUILayout;

    invoke-static {p0}, Lcom/oplus/compatui/OplusCompatUILayout;->access$000(Lcom/oplus/compatui/OplusCompatUILayout;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
