.class public final Lcom/oplus/quickstep/bracketspace/BracketModeHelper$systemDeviceStateObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/bracketspace/BracketModeHelper;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    sget-object p0, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->INSTANCE:Lcom/oplus/quickstep/bracketspace/BracketModeHelper;

    invoke-static {p0}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->access$checkIfNeedStartBracketSpace(Lcom/oplus/quickstep/bracketspace/BracketModeHelper;)Z

    return-void
.end method
