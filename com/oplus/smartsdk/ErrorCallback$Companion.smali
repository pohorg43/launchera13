.class public final Lcom/oplus/smartsdk/ErrorCallback$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/smartsdk/ErrorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/smartsdk/ErrorCallback$Companion;

.field public static final ERROR_CODE_NO:I = 0x0

.field public static final ERROR_CODE_URI_SECURITY:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/smartsdk/ErrorCallback$Companion;

    invoke-direct {v0}, Lcom/oplus/smartsdk/ErrorCallback$Companion;-><init>()V

    sput-object v0, Lcom/oplus/smartsdk/ErrorCallback$Companion;->$$INSTANCE:Lcom/oplus/smartsdk/ErrorCallback$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
