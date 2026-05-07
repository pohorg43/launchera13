.class public Lcom/android/launcher/model/OplusStandardLoaderResults;
.super Lcom/android/launcher3/model/OplusBaseLoaderResults;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorStandardLoaderResults"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/OplusBaseLoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public bindAllApps()V
    .registers 2

    const-string p0, "ColorStandardLoaderResults"

    const-string v0, "bindAllApps: Do NOT bind all apps in standard mode."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
