.class public final synthetic Lcom/android/launcher3/notification/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/notification/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/notification/a;

    invoke-direct {v0}, Lcom/android/launcher3/notification/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/a;->a:Lcom/android/launcher3/notification/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationKeyData;->b(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
