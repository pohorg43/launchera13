.class public final Lcom/android/launcher3/bottomsearch/BottomManagerInjector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/bottomsearch/IManagerInject;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/bottomsearch/BottomManagerInjector;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;

    invoke-direct {v0}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;-><init>()V

    sput-object v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomManagerInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/bottomsearch/IManagerInject$DefaultImpls;->init(Lcom/android/launcher/bottomsearch/IManagerInject;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
