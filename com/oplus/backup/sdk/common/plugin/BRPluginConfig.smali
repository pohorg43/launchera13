.class public Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BACKUP_FOLDER:Ljava/lang/String; = "backupFolder"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_PATTERN:Ljava/lang/String; = "dataPattern"

.field public static final DATA_PATTERN_NORMAL:I = 0x0

.field public static final DATA_PATTERN_NO_FILE:I = 0x2

.field public static final DATA_PATTERN_SUPPORT_ONE_BY_ONE:I = 0x1

.field public static final OPT_DIR:Ljava/lang/String; = "loadTmpFolder"

.field public static final PLUGIN_CLASS:Ljava/lang/String; = "pluginClass"

.field public static final PREFER_LOCAL_CLASS:Ljava/lang/String; = "preferLocalClass"

.field public static final TARGET_PACKAGE:Ljava/lang/String; = "targetPackage"

.field public static final UNIQUE_ID:Ljava/lang/String; = "uniqueID"

.field public static final USE_PARENT_CLASS:Ljava/lang/String; = "useParentClass"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;

    invoke-direct {v0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;-><init>()V

    sput-object v0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    new-instance p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getKey()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    invoke-virtual {p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public getBackupFolder()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "backupFolder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getDataPattern()I
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "dataPattern"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 4

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oplus.backup.sdk"

    const-string v2, "com.oplus.backup.sdk.demo.ClockBRPluginService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getOptimizedDirectory()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "loadTmpFolder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPluginClass()[Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "pluginClass"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetPackage()[Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "targetPackage"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUniqueID()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "uniqueID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public hashCode()I
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isPreferLocalClass()Z
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    const-string v0, "preferLocalClass"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "uniqueID"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    const-string p2, "version"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_15
    new-instance p1, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getVersion()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    :cond_38
    return-void
.end method

.method public putValue(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "BRPluginConfig:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
