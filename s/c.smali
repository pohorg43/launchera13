.class public final synthetic Ls/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 3

    iput p2, p0, Ls/c;->a:I

    packed-switch p2, :pswitch_data_54

    goto :goto_4e

    :pswitch_6  #0xc
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_c  #0xb
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_12  #0xa
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_18  #0x9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_1e  #0x8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_24  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_2a  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_30  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_36  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_3c  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_42  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_48  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :goto_4e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->b:Landroid/content/Context;

    return-void

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_42  #00000002
        :pswitch_3c  #00000003
        :pswitch_36  #00000004
        :pswitch_30  #00000005
        :pswitch_2a  #00000006
        :pswitch_24  #00000007
        :pswitch_1e  #00000008
        :pswitch_18  #00000009
        :pswitch_12  #0000000a
        :pswitch_c  #0000000b
        :pswitch_6  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Ls/c;->a:I

    packed-switch v0, :pswitch_data_54

    goto :goto_4e

    :pswitch_6  #0xb
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->b(Landroid/content/Context;)V

    return-void

    :pswitch_c  #0xa
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->d(Landroid/content/Context;)V

    return-void

    :pswitch_12  #0x9
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/util/UiThreadHelper;->b(Landroid/content/Context;)V

    return-void

    :pswitch_18  #0x8
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper;->b(Landroid/content/Context;)V

    return-void

    :pswitch_1e  #0x7
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper;->a(Landroid/content/Context;)V

    return-void

    :pswitch_24  #0x6
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->d(Landroid/content/Context;)V

    return-void

    :pswitch_2a  #0x5
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->c(Landroid/content/Context;)V

    return-void

    :pswitch_30  #0x4
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->b(Landroid/content/Context;)V

    return-void

    :pswitch_36  #0x3
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/backup/restore/LayoutRestoreHelper;->a(Landroid/content/Context;)V

    return-void

    :pswitch_3c  #0x2
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/util/SoundPlayerUtils;->c(Landroid/content/Context;)V

    return-void

    :pswitch_42  #0x1
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/util/SoundPlayerUtils;->g(Landroid/content/Context;)V

    return-void

    :pswitch_48  #0x0
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/OplusMainProcessInitializer;->a(Landroid/content/Context;)V

    return-void

    :goto_4e
    iget-object p0, p0, Ls/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;->a(Landroid/content/Context;)V

    return-void

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_42  #00000001
        :pswitch_3c  #00000002
        :pswitch_36  #00000003
        :pswitch_30  #00000004
        :pswitch_2a  #00000005
        :pswitch_24  #00000006
        :pswitch_1e  #00000007
        :pswitch_18  #00000008
        :pswitch_12  #00000009
        :pswitch_c  #0000000a
        :pswitch_6  #0000000b
    .end packed-switch
.end method
