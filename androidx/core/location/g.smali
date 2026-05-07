.class public final synthetic Landroidx/core/location/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic b:Landroidx/core/location/LocationListenerCompat;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/g;->a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput-object p2, p0, Landroidx/core/location/g;->b:Landroidx/core/location/LocationListenerCompat;

    iput-object p3, p0, Landroidx/core/location/g;->c:Ljava/lang/String;

    iput p4, p0, Landroidx/core/location/g;->d:I

    iput-object p5, p0, Landroidx/core/location/g;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroidx/core/location/g;->a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/g;->b:Landroidx/core/location/LocationListenerCompat;

    iget-object v2, p0, Landroidx/core/location/g;->c:Ljava/lang/String;

    iget v3, p0, Landroidx/core/location/g;->d:I

    iget-object p0, p0, Landroidx/core/location/g;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->c(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
