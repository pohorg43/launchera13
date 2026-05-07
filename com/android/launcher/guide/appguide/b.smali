.class public final synthetic Lcom/android/launcher/guide/appguide/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/android/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/guide/appguide/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/b;->c:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/guide/appguide/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher/guide/appguide/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/guide/appguide/b;->c:Lcom/android/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/guide/appguide/b;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/guide/appguide/AppGuideManager;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/b;->c:Lcom/android/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->d(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/guide/appguide/AppGuideManager;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/b;->c:Lcom/android/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->c(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/b;->c:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-static {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->b(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideHelper;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
