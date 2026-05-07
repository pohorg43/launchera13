.class public abstract Lorg/hapjs/card/api/AbstractInstallLister;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/hapjs/card/api/InstallListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallResult(Ljava/lang/String;I)V
    .registers 4

    const/16 v0, 0x64

    invoke-interface {p0, p1, p2, v0}, Lorg/hapjs/card/api/InstallListener;->onInstallResult(Ljava/lang/String;II)V

    return-void
.end method
