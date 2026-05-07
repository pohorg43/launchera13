.class public Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;
.super Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;
.source ""


# static fields
.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final SHOW_DELAY_TIME:I = 0x3e8

.field public static final VAR_VOLUME_LEVEL:Ljava/lang/String; = "volume_level"

.field public static final VAR_VOLUME_LEVEL_OLD:Ljava/lang/String; = "volume_level_old"

.field public static final VAR_VOLUME_TYPE:Ljava/lang/String; = "volume_type"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final mResetType:Ljava/lang/Runnable;

.field private mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field private mVolumeLevel:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mVolumeLevelOld:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mVolumeType:Lcom/oplus/fancyicon/data/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p0, v1, v0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater$1;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater$1;-><init>(Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p1

    const-string v1, "volume_level"

    invoke-direct {v0, v1, p1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mVolumeLevel:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "volume_level_old"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "volume_type"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mVolumeType:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mVolumeLevel:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;)Lcom/oplus/fancyicon/data/IndexedNumberVariable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mVolumeType:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    return-object p0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 7

    if-eqz p2, :cond_53

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    const/4 p1, -0x1

    const-string p3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p3, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mVolumeType:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    int-to-double v0, p1

    invoke-virtual {p3, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mVolumeLevel:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_36

    iget-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mVolumeLevelOld:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    int-to-double p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_36
    iget-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    iget-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_53
    return-void
.end method
