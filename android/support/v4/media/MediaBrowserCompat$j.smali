.class public abstract Landroid/support/v4/media/MediaBrowserCompat$j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$j$b;,
        Landroid/support/v4/media/MediaBrowserCompat$j$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$j;->a:Landroid/os/IBinder;

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$j$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$j$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    new-instance p0, Landroid/support/v4/media/k;

    invoke-direct {p0, v0}, Landroid/support/v4/media/k;-><init>(Landroid/support/v4/media/j;)V

    return-void
.end method
