.class synthetic Lcom/oplus/anim/model/layer/TextLayer$3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/model/layer/TextLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$oplus$anim$model$DocumentData$Justification:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/oplus/anim/model/DocumentData$Justification;->values()[Lcom/oplus/anim/model/DocumentData$Justification;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/anim/model/layer/TextLayer$3;->$SwitchMap$com$oplus$anim$model$DocumentData$Justification:[I

    :try_start_9
    sget-object v1, Lcom/oplus/anim/model/DocumentData$Justification;->LEFT_ALIGN:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/oplus/anim/model/layer/TextLayer$3;->$SwitchMap$com$oplus$anim$model$DocumentData$Justification:[I

    sget-object v1, Lcom/oplus/anim/model/DocumentData$Justification;->RIGHT_ALIGN:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/oplus/anim/model/layer/TextLayer$3;->$SwitchMap$com$oplus$anim$model$DocumentData$Justification:[I

    sget-object v1, Lcom/oplus/anim/model/DocumentData$Justification;->CENTER:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
