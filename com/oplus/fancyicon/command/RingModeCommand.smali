.class public Lcom/oplus/fancyicon/command/RingModeCommand;
.super Lcom/oplus/fancyicon/command/ActionCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;
    }
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "RingMode"

.field public static final TAG:Ljava/lang/String; = "RingModeCommand"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mToggleHelper:Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Ljava/lang/String;)V
    .registers 5

    const-string v0, "ring_mode"

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/command/ActionCommand;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;-><init>(Lcom/oplus/fancyicon/command/a;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mToggleHelper:Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;

    const-string v0, "normal"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mToggleHelper:Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;

    const-string v0, "vibrate"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mToggleHelper:Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;

    const-string v0, "silent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mToggleHelper:Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;->build(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid ring mode command value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RingModeCommand"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mToggleHelper:Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;->click()V

    iget-object v0, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mToggleHelper:Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;->getModeId()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/command/ActionCommand;->updateState(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mToggleHelper:Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/command/RingModeCommand$ModeToggleHelper;->getModeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RingModeCommand"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public update()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    :cond_14
    iget-object v0, p0, Lcom/oplus/fancyicon/command/RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/command/ActionCommand;->updateState(I)V

    :cond_1f
    return-void
.end method
