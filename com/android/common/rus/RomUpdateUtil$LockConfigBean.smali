.class Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/rus/RomUpdateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockConfigBean"
.end annotation


# instance fields
.field public mForbidLockPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLockAppLimit:I

.field public mLockPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLockPkgListOplus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoteVersion:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/common/rus/RomUpdateUtil;


# direct methods
.method public constructor <init>(Lcom/android/common/rus/RomUpdateUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->this$0:Lcom/android/common/rus/RomUpdateUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockPkgList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mForbidLockPkgList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockPkgListOplus:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mRemoteVersion:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockAppLimit:I

    return-void
.end method


# virtual methods
.method public addForbidLockPkg(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mForbidLockPkgList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLockPkg(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockPkgList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOplusLockPkg(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockPkgListOplus:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getForbidLockPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mForbidLockPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getLockPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getOplusLockPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/common/rus/RomUpdateUtil$LockConfigBean;->mLockPkgListOplus:Ljava/util/List;

    return-object p0
.end method
