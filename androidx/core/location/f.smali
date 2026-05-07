.class public final synthetic Landroidx/core/location/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic c:Landroidx/core/location/LocationListenerCompat;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;I)V
    .registers 5

    iput p4, p0, Landroidx/core/location/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/f;->b:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput-object p2, p0, Landroidx/core/location/f;->c:Landroidx/core/location/LocationListenerCompat;

    iput-object p3, p0, Landroidx/core/location/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Landroidx/core/location/f;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Landroidx/core/location/f;->b:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/f;->c:Landroidx/core/location/LocationListenerCompat;

    iget-object p0, p0, Landroidx/core/location/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->f(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    return-void

    :goto_10
    iget-object v0, p0, Landroidx/core/location/f;->b:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/f;->c:Landroidx/core/location/LocationListenerCompat;

    iget-object p0, p0, Landroidx/core/location/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->g(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
