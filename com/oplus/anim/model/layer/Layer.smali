.class public Lcom/oplus/anim/model/layer/Layer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/layer/Layer$MatteType;,
        Lcom/oplus/anim/model/layer/Layer$LayerType;
    }
.end annotation


# instance fields
.field private final blurEffect:Lcom/oplus/anim/model/content/BlurEffect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final composition:Lcom/oplus/anim/EffectiveAnimationComposition;

.field private final dropShadowEffect:Lcom/oplus/anim/parser/DropShadowEffect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final hidden:Z

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/oplus/anim/model/layer/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/oplus/anim/model/layer/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startFrame:F

.field private final text:Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final textProperties:Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeRemapping:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeStretch:F

.field private final transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/String;JLcom/oplus/anim/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;IIIFFIILcom/oplus/anim/model/animatable/AnimatableTextFrame;Lcom/oplus/anim/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/oplus/anim/model/layer/Layer$MatteType;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;ZLcom/oplus/anim/model/content/BlurEffect;Lcom/oplus/anim/parser/DropShadowEffect;)V
    .registers 30
    .param p9  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19  # Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20  # Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23  # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p25  # Lcom/oplus/anim/model/content/BlurEffect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p26  # Lcom/oplus/anim/parser/DropShadowEffect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/oplus/anim/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/Mask;",
            ">;",
            "Lcom/oplus/anim/model/animatable/AnimatableTransform;",
            "IIIFFII",
            "Lcom/oplus/anim/model/animatable/AnimatableTextFrame;",
            "Lcom/oplus/anim/model/animatable/AnimatableTextProperties;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/oplus/anim/model/layer/Layer$MatteType;",
            "Lcom/oplus/anim/model/animatable/AnimatableFloatValue;",
            "Z",
            "Lcom/oplus/anim/model/content/BlurEffect;",
            "Lcom/oplus/anim/parser/DropShadowEffect;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->shapes:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    move-object v1, p3

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->layerName:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/oplus/anim/model/layer/Layer;->layerId:J

    move-object v1, p6

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->layerType:Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/oplus/anim/model/layer/Layer;->parentId:J

    move-object v1, p9

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->refId:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->masks:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move v1, p12

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->solidWidth:I

    move/from16 v1, p13

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->solidHeight:I

    move/from16 v1, p14

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->solidColor:I

    move/from16 v1, p15

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->timeStretch:F

    move/from16 v1, p16

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->startFrame:F

    move/from16 v1, p17

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->preCompWidth:I

    move/from16 v1, p18

    iput v1, v0, Lcom/oplus/anim/model/layer/Layer;->preCompHeight:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->text:Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->textProperties:Lcom/oplus/anim/model/animatable/AnimatableTextProperties;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->matteType:Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->timeRemapping:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/oplus/anim/model/layer/Layer;->hidden:Z

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->blurEffect:Lcom/oplus/anim/model/content/BlurEffect;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/oplus/anim/model/layer/Layer;->dropShadowEffect:Lcom/oplus/anim/parser/DropShadowEffect;

    return-void
.end method


# virtual methods
.method public getBlurEffect()Lcom/oplus/anim/model/content/BlurEffect;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->blurEffect:Lcom/oplus/anim/model/content/BlurEffect;

    return-object p0
.end method

.method public getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public getDropShadowEffect()Lcom/oplus/anim/parser/DropShadowEffect;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->dropShadowEffect:Lcom/oplus/anim/parser/DropShadowEffect;

    return-object p0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/anim/model/layer/Layer;->layerId:J

    return-wide v0
.end method

.method public getInOutKeyframes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    return-object p0
.end method

.method public getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->layerType:Lcom/oplus/anim/model/layer/Layer$LayerType;

    return-object p0
.end method

.method public getMasks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/Mask;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->masks:Ljava/util/List;

    return-object p0
.end method

.method public getMatteType()Lcom/oplus/anim/model/layer/Layer$MatteType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->matteType:Lcom/oplus/anim/model/layer/Layer$MatteType;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->layerName:Ljava/lang/String;

    return-object p0
.end method

.method public getParentId()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/anim/model/layer/Layer;->parentId:J

    return-wide v0
.end method

.method public getPreCompHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/model/layer/Layer;->preCompHeight:I

    return p0
.end method

.method public getPreCompWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/model/layer/Layer;->preCompWidth:I

    return p0
.end method

.method public getRefId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->refId:Ljava/lang/String;

    return-object p0
.end method

.method public getShapes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/content/ContentModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->shapes:Ljava/util/List;

    return-object p0
.end method

.method public getSolidColor()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/model/layer/Layer;->solidColor:I

    return p0
.end method

.method public getSolidHeight()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/model/layer/Layer;->solidHeight:I

    return p0
.end method

.method public getSolidWidth()I
    .registers 1

    iget p0, p0, Lcom/oplus/anim/model/layer/Layer;->solidWidth:I

    return p0
.end method

.method public getStartProgress()F
    .registers 2

    iget v0, p0, Lcom/oplus/anim/model/layer/Layer;->startFrame:F

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDurationFrames()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getText()Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->text:Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    return-object p0
.end method

.method public getTextProperties()Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->textProperties:Lcom/oplus/anim/model/animatable/AnimatableTextProperties;

    return-object p0
.end method

.method public getTimeRemapping()Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->timeRemapping:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-object p0
.end method

.method public getTimeStretch()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/model/layer/Layer;->timeStretch:F

    return p0
.end method

.method public getTransform()Lcom/oplus/anim/model/animatable/AnimatableTransform;
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->transform:Lcom/oplus/anim/model/animatable/AnimatableTransform;

    return-object p0
.end method

.method public isHidden()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/anim/model/layer/Layer;->hidden:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/oplus/anim/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getParentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v2

    if-eqz v2, :cond_51

    const-string v3, "\t\tParents: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/oplus/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v2

    :goto_32
    if-eqz v2, :cond_4b

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/anim/model/layer/Layer;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/oplus/anim/EffectiveAnimationComposition;->layerModelForId(J)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v2

    goto :goto_32

    :cond_4b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_71

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidWidth()I

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidHeight()I

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/oplus/anim/model/layer/Layer;->getSolidColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b4
    iget-object v2, p0, Lcom/oplus/anim/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/anim/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ca
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ca

    :cond_e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
