.class public Lcom/oplus/compatmode/OplusCompatModeManager;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/compatmode/OplusCompatModeManager;
    .registers 1

    new-instance v0, Lcom/oplus/compatmode/OplusCompatModeManager;

    invoke-direct {v0}, Lcom/oplus/compatmode/OplusCompatModeManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public compatUIInit()V
    .registers 1

    return-void
.end method

.method public getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public moveCompatModeWindowToLeft(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public moveCompatModeWindowToRight(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public restartProcessAsUser(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
