.class public final synthetic Lcom/android/launcher3/model/r0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/model/r0;->a:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    iget-boolean p0, p0, Lcom/android/launcher3/model/r0;->a:Z

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;->h(ZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/model/r0;->a:Z

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->h(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
