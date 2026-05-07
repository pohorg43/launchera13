.class Lcom/oplus/compat/net/ConnectivityManagerNative$2;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/net/ConnectivityManagerNative;->startTethering(IZLcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$onStartTetheringCallbackNative:Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/net/ConnectivityManagerNative$2;->val$onStartTetheringCallbackNative:Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/net/ConnectivityManagerNative$2;->val$onStartTetheringCallbackNative:Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-interface {p0}, Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;->onTetheringFailed()V

    return-void
.end method

.method public onTetheringStarted()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/net/ConnectivityManagerNative$2;->val$onStartTetheringCallbackNative:Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-interface {p0}, Lcom/oplus/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;->onTetheringStarted()V

    return-void
.end method
