.class Lcom/oplus/compat/ims/ImsManagerNative$LazyHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/ims/ImsManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oplus/compat/ims/ImsManagerNative;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/compat/ims/ImsManagerNative;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/compat/ims/ImsManagerNative;-><init>(Lcom/oplus/compat/ims/ImsManagerNative$1;)V

    sput-object v0, Lcom/oplus/compat/ims/ImsManagerNative$LazyHolder;->INSTANCE:Lcom/oplus/compat/ims/ImsManagerNative;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/oplus/compat/ims/ImsManagerNative;
    .registers 1

    sget-object v0, Lcom/oplus/compat/ims/ImsManagerNative$LazyHolder;->INSTANCE:Lcom/oplus/compat/ims/ImsManagerNative;

    return-object v0
.end method
