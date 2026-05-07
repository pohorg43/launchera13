.class public final Lcom/oplus/smartsdk/GetViewCallback$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/smartsdk/GetViewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/smartsdk/GetViewCallback$Companion;

.field public static final CODE_PARSE_ERROR:I = 0x1

.field public static final CODE_REFRESH_ERROR:I = 0x2

.field public static final CODE_SUCCESS:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/smartsdk/GetViewCallback$Companion;

    invoke-direct {v0}, Lcom/oplus/smartsdk/GetViewCallback$Companion;-><init>()V

    sput-object v0, Lcom/oplus/smartsdk/GetViewCallback$Companion;->$$INSTANCE:Lcom/oplus/smartsdk/GetViewCallback$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
