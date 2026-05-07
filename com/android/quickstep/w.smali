.class public final synthetic Lcom/android/quickstep/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/w;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/w;

    invoke-direct {v0}, Lcom/android/quickstep/w;-><init>()V

    sput-object v0, Lcom/android/quickstep/w;->a:Lcom/android/quickstep/w;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()I
    .registers 1

    invoke-static {}, Lcom/android/quickstep/InputConsumer;->b()I

    move-result p0

    return p0
.end method
