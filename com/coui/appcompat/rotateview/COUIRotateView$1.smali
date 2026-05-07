.class Lcom/coui/appcompat/rotateview/COUIRotateView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/rotateview/COUIRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/rotateview/COUIRotateView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/rotateview/COUIRotateView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView$1;->a:Lcom/coui/appcompat/rotateview/COUIRotateView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView$1;->a:Lcom/coui/appcompat/rotateview/COUIRotateView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView$1;->a:Lcom/coui/appcompat/rotateview/COUIRotateView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->d:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView$1;->a:Lcom/coui/appcompat/rotateview/COUIRotateView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->d:Z

    return-void
.end method
