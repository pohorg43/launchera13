.class Lcom/android/launcher/predictedapps/PredictedDatabase$1;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/predictedapps/PredictedDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/android/launcher/predictedapps/PredictedDatabase;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/launcher/predictedapps/PredictedDatabase;
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/launcher/predictedapps/PredictedDatabase;

    const-string v1, "app-prediction.db"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/predictedapps/PredictedDatabase;

    return-object p0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/predictedapps/PredictedDatabase$1;->create()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object p0

    return-object p0
.end method
