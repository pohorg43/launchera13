.class public interface abstract Lcom/oplus/smartsdk/ErrorCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/smartsdk/ErrorCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/smartsdk/ErrorCallback$Companion;

.field public static final ERROR_CODE_NO:I = 0x0

.field public static final ERROR_CODE_URI_SECURITY:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/smartsdk/ErrorCallback$Companion;->$$INSTANCE:Lcom/oplus/smartsdk/ErrorCallback$Companion;

    sput-object v0, Lcom/oplus/smartsdk/ErrorCallback;->Companion:Lcom/oplus/smartsdk/ErrorCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onCall(Ljava/lang/String;I)V
.end method
