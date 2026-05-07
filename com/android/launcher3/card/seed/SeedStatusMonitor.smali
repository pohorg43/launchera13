.class public final Lcom/android/launcher3/card/seed/SeedStatusMonitor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private hasInit:Z

.field private hasRegisterListener:Z

.field private hasUsOrContainerCard:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasInit:Z

    return p0
.end method

.method public final getHasRegisterListener()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasRegisterListener:Z

    return p0
.end method

.method public final getHasUsOrContainerCard()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasUsOrContainerCard:Z

    return p0
.end method

.method public final setHasInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasInit:Z

    return-void
.end method

.method public final setHasRegisterListener(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasRegisterListener:Z

    return-void
.end method

.method public final setHasUsOrContainerCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasUsOrContainerCard:Z

    return-void
.end method
