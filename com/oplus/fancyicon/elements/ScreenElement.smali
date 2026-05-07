.class public abstract Lcom/oplus/fancyicon/elements/ScreenElement;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;,
        Lcom/oplus/fancyicon/elements/ScreenElement$Align;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field public static final ALIGN:Ljava/lang/String; = "align"

.field public static final ALIGNV:Ljava/lang/String; = "alignV"

.field public static final BOTTOM:Ljava/lang/String; = "bottom"

.field public static final CENTER:Ljava/lang/String; = "center"

.field public static final LEFT:Ljava/lang/String; = "left"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElement"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mActualWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field public mAlign:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

.field public mAlignV:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

.field public mCategory:Ljava/lang/String;

.field public mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

.field public mHasName:Z

.field private mIsVisible:Z

.field private mLastTickTime:J

.field public mName:Ljava/lang/String;

.field public mParent:Lcom/oplus/fancyicon/elements/ElementGroup;

.field public mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field private mShow:Z

.field private mVisibilityExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mVisibilityVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mIsVisible:Z

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mShow:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mLastTickTime:J

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    if-eqz p1, :cond_b2

    const-string p2, "category"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mCategory:Ljava/lang/String;

    const-string p2, "name"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    const-string p2, "visibility"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "false"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mShow:Z

    goto :goto_52

    :cond_3f
    const-string v1, "true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mShow:Z

    goto :goto_52

    :cond_4a
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p2, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mVisibilityExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    :cond_52
    :goto_52
    const-string p2, "align"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "center"

    if-eqz v0, :cond_67

    sget-object p2, Lcom/oplus/fancyicon/elements/ScreenElement$Align;->RIGHT:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlign:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    goto :goto_83

    :cond_67
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    sget-object p2, Lcom/oplus/fancyicon/elements/ScreenElement$Align;->LEFT:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlign:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    goto :goto_83

    :cond_74
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7f

    sget-object p2, Lcom/oplus/fancyicon/elements/ScreenElement$Align;->CENTER:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlign:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    goto :goto_83

    :cond_7f
    sget-object p2, Lcom/oplus/fancyicon/elements/ScreenElement$Align;->LEFT:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlign:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    :goto_83
    const-string p2, "alignV"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bottom"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_96

    sget-object p1, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->BOTTOM:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlignV:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    goto :goto_b2

    :cond_96
    const-string p2, "top"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a3

    sget-object p1, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->TOP:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlignV:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    goto :goto_b2

    :cond_a3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ae

    sget-object p1, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->CENTER:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlignV:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    goto :goto_b2

    :cond_ae
    sget-object p1, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->TOP:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlignV:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    :cond_b2
    :goto_b2
    return-void
.end method

.method private allowToTick(J)Z
    .registers 5

    iget-wide v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mLastTickTime:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_a

    iput-wide p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mLastTickTime:J

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private setVisibilityVar(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mVisibilityVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-nez v0, :cond_19

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    const-string v3, "visibility"

    invoke-direct {v0, v1, v3, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mVisibilityVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_19
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mVisibilityVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz p1, :cond_20

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    goto :goto_22

    :cond_20
    const-wide/16 v0, 0x0

    :goto_22
    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_25
    return-void
.end method


# virtual methods
.method public callTick(J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->allowToTick(J)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->tick(J)V

    :cond_9
    return-void
.end method

.method public descale(F)F
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getScale()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method public end()V
    .registers 1

    return-void
.end method

.method public evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D
    .registers 2

    if-nez p1, :cond_5

    const-wide/16 p0, 0x0

    goto :goto_f

    :cond_5
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    :goto_f
    return-wide p0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/expression/Expression;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_e

    :cond_4
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public findElement(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getFramerate()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result p0

    :goto_a
    return p0
.end method

.method public getLeft(FF)F
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_6

    return p1

    :cond_6
    sget-object v0, Lcom/oplus/fancyicon/elements/ScreenElement$1;->$SwitchMap$com$oplus$fancyicon$elements$ScreenElement$Align:[I

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlign:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    return p1

    :cond_17
    sub-float/2addr p1, p2

    return p1

    :cond_19
    const/high16 p0, 0x40000000  # 2.0f

    div-float/2addr p2, p0

    sub-float/2addr p1, p2

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getTop(FF)F
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_6

    return p1

    :cond_6
    sget-object v0, Lcom/oplus/fancyicon/elements/ScreenElement$1;->$SwitchMap$com$oplus$fancyicon$elements$ScreenElement$AlignV:[I

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mAlignV:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    return p1

    :cond_17
    sub-float/2addr p1, p2

    return p1

    :cond_19
    const/high16 p0, 0x40000000  # 2.0f

    div-float/2addr p2, p0

    sub-float/2addr p1, p2

    return p1
.end method

.method public hasAnimationRunning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mIsVisible:Z

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->setVisibilityVar(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    return-void
.end method

.method public isVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mIsVisible:Z

    return p0
.end method

.method public isVisibleInner()Z
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mVisibilityExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public onRenderThreadStoped()V
    .registers 1

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onVisibilityChange(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->setVisibilityVar(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateVisibility()V

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mIsVisible:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_12

    :cond_b
    const-string p0, "ScreenElement"

    const-string p1, "render not visible"

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public final reset()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->reset(J)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->tick(J)V

    return-void
.end method

.method public reset(J)V
    .registers 3

    return-void
.end method

.method public resume()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateVisibility()V

    return-void
.end method

.method public scale(D)F
    .registers 5

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getScale()F

    move-result p0

    float-to-double v0, p0

    mul-double/2addr p1, v0

    double-to-float p0, p1

    return p0
.end method

.method public setActualHeight(D)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mActualHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    const-string v3, "actual_h"

    invoke-direct {v0, v1, v3, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mActualHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_1a
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mActualHeightVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    return-void
.end method

.method public setActualWidth(D)V
    .registers 7

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mActualWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    const-string v3, "actual_w"

    invoke-direct {v0, v1, v3, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mActualWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_1a
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mActualWidthVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    return-void
.end method

.method public setParent(Lcom/oplus/fancyicon/elements/ElementGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mParent:Lcom/oplus/fancyicon/elements/ElementGroup;

    return-void
.end method

.method public show(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mShow:Z

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateVisibility()V

    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->show(Z)V

    :cond_b
    return-void
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method

.method public updateFramerate(F)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->createFramerateToken(Ljava/lang/String;)Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    :cond_17
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;->updateFramerate(F)V

    :cond_1e
    return-void
.end method

.method public updateVisibility()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_d

    iput-boolean v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/elements/ScreenElement;->onVisibilityChange(Z)V

    :cond_d
    return-void
.end method
