.class public final Lcom/android/systemui/flags/NoFlagResultsException;
.super Ljava/lang/Exception;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "SystemUI failed to communicate its flags back successfully"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
