.class public Lcom/oplus/fancyicon/command/DataSwitchCommand;
.super Lcom/oplus/fancyicon/command/ActionCommand;
.source ""


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "Data"


# instance fields
.field private mApnEnable:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private mOnOffHelper:Lcom/oplus/fancyicon/command/OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;Ljava/lang/String;)V
    .registers 5

    const-string v0, "data_state"

    const-string v1, "MobileData"

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/fancyicon/command/ActionCommand;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/oplus/fancyicon/command/OnOffCommandHelper;

    invoke-direct {p1, p2}, Lcom/oplus/fancyicon/command/OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mOnOffHelper:Lcom/oplus/fancyicon/command/OnOffCommandHelper;

    return-void
.end method

.method private ensureConnectivityManager()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/oplus/fancyicon/command/ActionCommand;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    :cond_14
    iget-object p0, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method


# virtual methods
.method public doPerform()V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/fancyicon/command/DataSwitchCommand;->ensureConnectivityManager()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mOnOffHelper:Lcom/oplus/fancyicon/command/OnOffCommandHelper;

    iget-boolean v1, v0, Lcom/oplus/fancyicon/command/OnOffCommandHelper;->mIsToggle:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    iget-boolean v0, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mApnEnable:Z

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_18

    :cond_14
    move v0, v3

    goto :goto_18

    :cond_16
    iget-boolean v0, v0, Lcom/oplus/fancyicon/command/OnOffCommandHelper;->mIsOn:Z

    :goto_18
    iget-boolean v1, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mApnEnable:Z

    if-eq v1, v0, :cond_2b

    iget-object p0, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "setMobileDataEnabled"

    invoke-static {p0, v0, v1}, Lcom/oplus/fancyicon/util/ReflectUtil;->processFun(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-void
.end method

.method public update()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/fancyicon/command/DataSwitchCommand;->ensureConnectivityManager()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getMobileDataEnabled"

    invoke-static {v0, v2, v1}, Lcom/oplus/fancyicon/util/ReflectUtil;->processFun(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/command/DataSwitchCommand;->mApnEnable:Z

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/command/ActionCommand;->updateState(I)V

    :cond_1c
    return-void
.end method
