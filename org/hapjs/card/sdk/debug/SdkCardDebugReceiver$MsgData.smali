.class Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgData"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/hapjs/card/sdk/debug/SdkCardDebugReceiver$MsgData;->intent:Landroid/content/Intent;

    return-void
.end method
