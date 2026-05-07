.class public abstract Lcom/oplus/fancyicon/UIEngineView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UIEngineView"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field public mController:Lcom/oplus/fancyicon/BaseRendererController;

.field public mIgnoreFollowedTouchEvent:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field public mPaused:Z

.field public mScreenOnAlready:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mIgnoreFollowedTouchEvent:Z

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mScreenOnAlready:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/fancyicon/UIEngineView;->mIgnoreFollowedTouchEvent:Z

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mScreenOnAlready:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/fancyicon/UIEngineView;->mIgnoreFollowedTouchEvent:Z

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mScreenOnAlready:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/fancyicon/UIEngineView;->mIgnoreFollowedTouchEvent:Z

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mScreenOnAlready:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/fancyicon/BaseRendererController;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mIgnoreFollowedTouchEvent:Z

    iput-boolean p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mScreenOnAlready:Z

    iput-object p2, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    if-eqz p1, :cond_1a

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/BaseRendererController;->addRenderable(Lcom/oplus/fancyicon/IRenderable;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/BaseRendererController;->cleanUp(Lcom/oplus/fancyicon/IRenderable;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->removeSelfFromThread()V

    :cond_11
    return v0
.end method

.method public getCurrentState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getSuggestedMinimumHeight()I

    move-result p0

    return p0
.end method

.method public getSuggestedMinimumWidth()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getSuggestedMinimumWidth()I

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "UIEngineView"

    :try_start_2
    iget-object p0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->doRender(Landroid/graphics/Canvas;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1d

    :catch_c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    iget-object p0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p1

    sub-int/2addr p4, p2

    int-to-double v0, p4

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getScale()F

    move-result p2

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getMatrixScale()F

    move-result p4

    mul-float/2addr p4, p2

    float-to-double v2, p4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p4, "view_width"

    invoke-static {p4, p1, p2}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p1

    sub-int/2addr p5, p3

    int-to-double p2, p5

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getScale()F

    move-result p4

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getMatrixScale()F

    move-result p0

    mul-float/2addr p0, p4

    float-to-double p4, p0

    div-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p2, "view_height"

    invoke-static {p2, p1, p0}, Lcom/oplus/fancyicon/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;Ljava/lang/Double;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->pausedSelf()V

    iget-object v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->pauseThreadsafely()V

    :cond_11
    iget-object p0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    const-string v0, "pause"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->command(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mScreenOnAlready:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    iget-object v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->resumeSelf()V

    iget-object v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/BaseRendererController;->resumeThread()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/UIEngineView;->postInvalidate()V

    :cond_18
    iget-object p0, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    const-string v0, "resume"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->command(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-string v2, "UIEngineView"

    const/4 v3, 0x1

    if-eq v3, v1, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3f

    :cond_13
    const-string v1, "onTouch action = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " y = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v1, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_be

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-lez v1, :cond_54

    const-string p0, "touch point index > 1, ignore"

    invoke-static {v2, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_54
    if-nez v0, :cond_58

    iput-boolean v4, p0, Lcom/oplus/fancyicon/UIEngineView;->mIgnoreFollowedTouchEvent:Z

    :cond_58
    iget-boolean v1, p0, Lcom/oplus/fancyicon/UIEngineView;->mIgnoreFollowedTouchEvent:Z

    if-nez v1, :cond_9d

    iget-object v1, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v3, v5, :cond_72

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_86

    :cond_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch disallowIntercept "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    iget-boolean v2, p0, Lcom/oplus/fancyicon/UIEngineView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v2, v1, :cond_93

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v1, p0, Lcom/oplus/fancyicon/UIEngineView;->mNeedDisallowInterceptTouchEvent:Z

    :cond_93
    iget-object v1, p0, Lcom/oplus/fancyicon/UIEngineView;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oplus/fancyicon/BaseRendererController;->queueEvent(Landroid/view/MotionEvent;)V

    goto :goto_b6

    :cond_9d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent,ignore action="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "of current touch Event !!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b6
    const/4 p1, 0x3

    if-eq v0, p1, :cond_bb

    if-ne v0, v3, :cond_bd

    :cond_bb
    iput-boolean v4, p0, Lcom/oplus/fancyicon/UIEngineView;->mIgnoreFollowedTouchEvent:Z

    :cond_bd
    return v3

    :cond_be
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne v3, p0, :cond_c9

    const-string p0, "no root"

    invoke-static {v2, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    return v4
.end method

.method public postInvalidate()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/oplus/fancyicon/UIEngineView;->mPaused:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_d
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/fancyicon/UIEngineView;->onResume()V

    goto :goto_13

    :cond_9
    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/16 v0, 0x8

    if-ne p1, v0, :cond_13

    :cond_10
    invoke-virtual {p0}, Lcom/oplus/fancyicon/UIEngineView;->onPause()V

    :cond_13
    :goto_13
    return-void
.end method
