.class synthetic Lcom/oplus/fancyicon/elements/ScreenElement$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$oplus$fancyicon$elements$ScreenElement$Align:[I

.field public static final synthetic $SwitchMap$com$oplus$fancyicon$elements$ScreenElement$AlignV:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->values()[Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/fancyicon/elements/ScreenElement$1;->$SwitchMap$com$oplus$fancyicon$elements$ScreenElement$AlignV:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->CENTER:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/oplus/fancyicon/elements/ScreenElement$1;->$SwitchMap$com$oplus$fancyicon$elements$ScreenElement$AlignV:[I

    sget-object v3, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->BOTTOM:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-static {}, Lcom/oplus/fancyicon/elements/ScreenElement$Align;->values()[Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/oplus/fancyicon/elements/ScreenElement$1;->$SwitchMap$com$oplus$fancyicon$elements$ScreenElement$Align:[I

    :try_start_26
    sget-object v3, Lcom/oplus/fancyicon/elements/ScreenElement$Align;->CENTER:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/oplus/fancyicon/elements/ScreenElement$1;->$SwitchMap$com$oplus$fancyicon$elements$ScreenElement$Align:[I

    sget-object v2, Lcom/oplus/fancyicon/elements/ScreenElement$Align;->RIGHT:Lcom/oplus/fancyicon/elements/ScreenElement$Align;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method
