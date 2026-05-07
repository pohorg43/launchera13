.class public abstract Landroid/support/v4/media/session/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/a$b;,
        Landroid/support/v4/media/session/a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v4/media/session/IMediaControllerCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/session/a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/a$a;-><init>(Landroid/support/v4/media/session/a;)V

    new-instance p0, Landroid/support/v4/media/session/e;

    invoke-direct {p0, v0}, Landroid/support/v4/media/session/e;-><init>(Landroid/support/v4/media/session/d;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    return-void
.end method
