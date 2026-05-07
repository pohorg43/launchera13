.class public Lorg/hapjs/card/sdk/MockActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hapjs/card/sdk/MockActivity$MockWindow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MockActivity"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/hapjs/card/sdk/MockActivity;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lorg/hapjs/card/sdk/MockActivity;->mContext:Landroid/content/Context;

    if-nez p2, :cond_c

    new-instance p2, Lorg/hapjs/card/sdk/MockActivity$MockWindow;

    invoke-direct {p2, p1}, Lorg/hapjs/card/sdk/MockActivity$MockWindow;-><init>(Landroid/content/Context;)V

    :cond_c
    iput-object p2, p0, Lorg/hapjs/card/sdk/MockActivity;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lorg/hapjs/card/sdk/MockActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 1

    iget-object p0, p0, Lorg/hapjs/card/sdk/MockActivity;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    iget-object p0, p0, Lorg/hapjs/card/sdk/MockActivity;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public isDestroyed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isFinishing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
