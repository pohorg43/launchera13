.class public Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final stroke:Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final strokeWidth:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final tracking:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V
    .registers 5
    .param p1  # Lcom/oplus/anim/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/anim/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    iput-object p2, p0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->stroke:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    iput-object p3, p0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    iput-object p4, p0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->tracking:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    return-void
.end method
