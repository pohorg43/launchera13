.class synthetic Lcom/android/launcher/guide/GuidePageManager$6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/GuidePageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$launcher$guide$GuidePageManager$Page:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/guide/GuidePageManager$Page;->values()[Lcom/android/launcher/guide/GuidePageManager$Page;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher/guide/GuidePageManager$6;->$SwitchMap$com$android$launcher$guide$GuidePageManager$Page:[I

    :try_start_9
    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/launcher/guide/GuidePageManager$6;->$SwitchMap$com$android$launcher$guide$GuidePageManager$Page:[I

    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->ENTER_TOGGLE_BAR:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
