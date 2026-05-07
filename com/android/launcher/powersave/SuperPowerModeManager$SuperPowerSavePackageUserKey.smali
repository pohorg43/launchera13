.class Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/SuperPowerModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperPowerSavePackageUserKey"
.end annotation


# static fields
.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_USER:Ljava/lang/String; = "user"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mUser:I

.field public final synthetic this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;


# direct methods
.method private constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;->mUser:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/String;ILcom/android/launcher/powersave/SuperPowerModeManager$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;)Lcom/google/gson/JsonObject;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;->toJson()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method private toJson()Lcom/google/gson/JsonObject;
    .registers 4

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$SuperPowerSavePackageUserKey;->mUser:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method
