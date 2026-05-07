.class public Lcom/oplus/epona/ipc/cursor/ProviderCursor;
.super Landroid/database/MatrixCursor;
.source ""


# static fields
.field public static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ProviderCursor"


# instance fields
.field private binderExtras:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "col"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/epona/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/oplus/epona/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    return-void
.end method

.method public static generateCursor(Landroid/os/Bundle;)Lcom/oplus/epona/ipc/cursor/ProviderCursor;
    .registers 3

    new-instance v0, Lcom/oplus/epona/ipc/cursor/ProviderCursor;

    sget-object v1, Lcom/oplus/epona/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/oplus/epona/ipc/cursor/ProviderCursor;-><init>([Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static stripBundle(Landroid/database/Cursor;)Landroid/os/Bundle;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/epona/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    return-object p0
.end method
