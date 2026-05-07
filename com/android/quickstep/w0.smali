.class public final synthetic Lcom/android/quickstep/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/util/SettingsCache;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;I)V
    .registers 6

    iput p4, p0, Lcom/android/quickstep/w0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/w0;->b:Lcom/android/launcher3/util/SettingsCache;

    iput-object p2, p0, Lcom/android/quickstep/w0;->c:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/quickstep/w0;->d:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/w0;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/quickstep/w0;->b:Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/quickstep/w0;->c:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/quickstep/w0;->d:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->c(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/quickstep/w0;->b:Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/quickstep/w0;->c:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/quickstep/w0;->d:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->a(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/quickstep/w0;->b:Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/quickstep/w0;->c:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/quickstep/w0;->d:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->i(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
