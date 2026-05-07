.class public final Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/AbsCellLayoutBgRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderParam"
.end annotation


# instance fields
.field private alpha:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->alpha:I

    return p0
.end method

.method public final setAlpha(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->alpha:I

    return-void
.end method
