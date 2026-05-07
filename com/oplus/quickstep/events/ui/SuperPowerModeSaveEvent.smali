.class public Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# instance fields
.field private final mInSuperPowerSaveMode:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->mInSuperPowerSaveMode:Z

    return-void
.end method


# virtual methods
.method public isInSuperPowerSaveMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->mInSuperPowerSaveMode:Z

    return p0
.end method
